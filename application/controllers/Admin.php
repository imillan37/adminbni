<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function vistainicioadmin2()
	{
		$this->load->view('admin/inicioadmin2');
	}

	public function consCap1()
	{
		$this->load->view('capitulos/capitulo1');
	}

	public function consCap2()
	{
		$this->load->view('capitulos/capitulo2');
	}

	public function config()
	{
		//$this->load->view('welcome_message');
		$this->load->view('admin/admin_config');
	}

	public function alta_usuarios()
	{
		//$this->load->view('welcome_message');
		$this->load->view('admin/alta_usuario');
	}

}