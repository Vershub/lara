<?php
class Page {
	//code of class

	//svoistva classa
	public $header = "HEADER";
	public $content = "";
	public $footer = "";
		//method of class
	public function view_header() {
		echo "<br>".$this->header."!!<br>";
	}

	public function foo() {


		$this->view_header();
	}
}

$index = new Page();
$index->header = "INDEX";
$index->content = "Text for content";
$index->foo();


echo $index->header;
echo "<br>".$index->content;

$admin = new Page();
$admin->header = "ADMIN";
echo "<br>".$admin->header;

$view = new Page();
$view->header .= "View";
echo "<br>".$view->header


?>