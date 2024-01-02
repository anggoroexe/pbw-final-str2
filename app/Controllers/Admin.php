<?php
namespace App\Controllers;
use App\Models\KarcisModel;
use App\Models\HistoryModel;
class Admin extends BaseController {
    public function __construct()
    {
        $this->KarcisModel = new KarcisModel();
        $this->HistoryModel = new HistoryModel();
    }
    public function history(): string {
        $currentPage = $this->request->getVar('page') ? $this->request->getVar('page') : 1;
        $data = [
            'judul' => 'Riwayat Karcis',
            'history' => $this->HistoryModel->paginate(6, 'karcis'),
            'pager' => $this->HistoryModel->pager,
            'currentPage' => $currentPage
        ];
        return view('admin/history', $data);
    }
    public function index(): string {
        $data = ['judul' => 'Dashboard'];
        return view('admin/index', $data);
    }
    public function detail($idkarcis)
    {
        $data = [
            'judul' => 'Detail karcis',
            'karcis' => $this->KarcisModel->getKarcis($idkarcis)
        ];
        return view('admin/detail', $data);
    }
    public function transaksi(): string {
        $currentPage = $this->request->getVar('page') ? $this->request->getVar('page') : 1;
        $data = [
            'judul' => 'Transaksi',
            'karcis' => $this->KarcisModel->paginate(6, 'karcis'),
            'pager' => $this->KarcisModel->pager,
            'currentPage' => $currentPage
        ];
        return view('admin/transaksi', $data);
    }
    public function bayar($idkarcis)
    {
        date_default_timezone_set('Asia/Jakarta');
        $existingData = $this->KarcisModel->find($idkarcis);
        if (!$existingData) {
            return redirect()->to('/')->with('error', 'Data not found.');
        }
        // Update data
        $dataToUpdate = [
            'waktuakhir' => date('H:i:s'),
            'statusbayar' => '1',
        ];

        $this->KarcisModel->updateData($idkarcis, $dataToUpdate);
        return redirect()->to('admin/transaksi')->with('success', 'Data updated successfully.');
    }
    public function hapus($idkarcis)
    {
        $existingData = $this->KarcisModel->find($idkarcis);

        if (!$existingData) {
            return redirect()->to('/')->with('error', 'Data not found.');
        }

        // Delete data
        $this->KarcisModel->deleteData($idkarcis);

        return redirect()->to('admin/transaksi')->with('success', 'Data deleted successfully.');
    }
}