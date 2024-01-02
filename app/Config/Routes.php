<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->setAutoRoute(true);
$routes->get('/', 'Home::index');
$routes->get('/admin', 'Admin::index');
$routes->get('/admin/transaksi', 'Admin::transaksi');
$routes->get('/admin/detail/(:any)', 'Admin::detail/$1');
$routes->post('/admin/update/(:any)', 'Admin::bayar/$1');
$routes->post('/admin/hapus/(:any)', 'Admin::hapus/$1');
$routes->get('/admin/history', 'Admin::history');
$routes->get('/mobil-pdf', 'Home::mobilPDF');
$routes->get('/motor-pdf', 'Home::motorPDF');