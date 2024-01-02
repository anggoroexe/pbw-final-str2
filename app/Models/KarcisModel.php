<?php

namespace App\Models;

use CodeIgniter\Model;

class KarcisModel extends Model
{
    protected $table = 'datakarcis';
    protected $primaryKey = 'id';
    protected $allowedFields = ['id', 'jeniskendaraan', 'nopol', 'statusbayar', 'waktuawal','waktuakhir'];
    public function getKarcis($idkarcis = false)
    {
        if ($idkarcis == false) {
            return $this->findAll();
        }
        return $this->where(['id' => $idkarcis])->first();
    }
    public function updateData($id, $data)
    {
        return $this->update($id, $data);
    }

    public function deleteData($id)
    {
        return $this->delete($id);
    }
}