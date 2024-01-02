<?php
namespace App\Controllers;
use App\Models\KarcisModel;
use Mpdf\Mpdf;

class Home extends BaseController {
    
    public function index(): string {
        $data = ['judul' => 'Home'];
        return view('pages/home', $data);
    }
    private function RandomDataMobil() {
        date_default_timezone_set('Asia/Jakarta');
        $karcisModel = new KarcisModel();
        $dataToInsert = [
            'id' => substr(str_shuffle('ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, 6),
            'jeniskendaraan' => '0', 
            'nopol' => 'G' . substr(str_shuffle('0123456789'), 0, 4) . substr(str_shuffle('ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, 2),
            'statusbayar' => '0', 
            'waktuawal' => date('H:i:s'),
            'waktuakhir' => '00:00:00'
        ];
        $karcisModel->insert($dataToInsert);
        return $dataToInsert;
    }
    private function RandomDataMotor() {
        date_default_timezone_set('Asia/Jakarta');
        $karcisModel = new KarcisModel();
        $dataToInsert = [
            'id' => substr(str_shuffle('ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, 6),
            'jeniskendaraan' => '1', 
            'nopol' => 'G' . substr(str_shuffle('0123456789'), 0, 4) . substr(str_shuffle('ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, 2),
            'statusbayar' => '0', 
            'waktuawal' => date('H:i:s'),
            'waktuakhir' => '00:00:00'
        ];
        $karcisModel->insert($dataToInsert);
        return $dataToInsert;
    }
    public function mobilPDF() {
        $mpdf = new Mpdf(['mode' => 'utf-8', 'format' => [100, 150]]);
        $generatedData = $this->RandomDataMobil();
        $data['generatedData'] = $generatedData;
        $html = view('pages/mobil_pdf', $data);
        $mpdf->WriteHTML($html);
        $mpdf->Output('karcis'.date('dHs').'.pdf', 'D');
    }

    public function motorPDF() {
        $mpdf = new Mpdf(['mode' => 'utf-8', 'format' => [100, 150]]);
        $generatedData = $this->RandomDataMotor();
        $data['generatedData'] = $generatedData;
        $html = view('pages/motor_pdf', $data);
        $mpdf->WriteHTML($html);
        $mpdf->Output('karcis'.date('YmdHs').'.pdf', 'D');
    }

}
