<?php
defined('BASEPATH') or exit('No direct script access allowed');
class CetakLaporan extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('Pdf'); // MEMANGGIL LIBRARY YANG KITA BUAT TADI
        $this->load->model('Perhitungan_model');
    }
    function index()
    {
        $kriteria = $this->Perhitungan_model->get_kriteria();
        $alternatif = $this->Perhitungan_model->get_alternatif();

        $this->Perhitungan_model->hapus_hasil();
        foreach ($alternatif as $keys) {
            $nilai_total = 0;
            foreach ($kriteria as $key) {
                $data_pencocokan = $this->Perhitungan_model->data_nilai($keys->id_alternatif, $key->id_kriteria);
                $min_max = $this->Perhitungan_model->get_max_min($key->id_kriteria);
                $hasil_normalisasi = @(round(($data_pencocokan['nilai'] - $min_max['min']) / ($min_max['max'] - $min_max['min']), 4));
                $bobot = $key->bobot;
                $nilai_total += $bobot * $hasil_normalisasi;
            }
            $hasil_akhir = [
                'id_alternatif' => $keys->id_alternatif,
                'nilai' => $nilai_total
            ];
            $result = $this->Perhitungan_model->insert_nilai_hasil($hasil_akhir);
        }

        $data = $this->Perhitungan_model->get_hasil();

        error_reporting(0); // AGAR ERROR MASALAH VERSI PHP TIDAK MUNCUL
        $pdf = new FPDF('L', 'mm', 'A4');
        $pdf->AddPage();
        $pdf->SetFont('Arial', 'B', 16);
        $pdf->Cell(0, 7, 'Data Hasil Akhir', 0, 1, 'C');
        $pdf->Cell(10, 7, '', 0, 1);
        $pdf->SetFont('Arial', 'B', 10);
        $pdf->SetLeftMargin(20);
        $pdf->Cell(10, 6, 'No', 1, 0, 'C');
        $pdf->Cell(90, 6, 'Nama Pegawai', 1, 0, 'C');
        $pdf->Cell(120, 6, 'Hasil Akhir', 1, 0, 'C');
        $pdf->Cell(40, 6, 'Rangking', 1, 1, 'C');
        $pdf->SetFont('Arial', '', 10);
        $no = 0;
        foreach ($data as $key) {
            $no++;
            $pdf->Cell(10, 6, $no, 1, 0, 'C');
            $pdf->Cell(
                90,
                6,
                $this->Perhitungan_model->get_hasil_alternatif($key->id_alternatif)['nama'],
                1,
                0
            );
            $pdf->Cell(120, 6, $key->nilai, 1, 0);
            $pdf->Cell(40, 6, $no, 1, 1);
        }
        $pdf->Output();
    }
}
