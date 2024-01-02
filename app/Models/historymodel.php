<?php

namespace App\Models;

use CodeIgniter\Model;

class HistoryModel extends Model
{
    protected $table = 'history';
    protected $primaryKey = 'id';
    protected $allowedFields = ['id_datakarcis', 'nopol', 'waktuawal', 'history', 'timestamp'];
}