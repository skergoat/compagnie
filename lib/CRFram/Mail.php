<?php 

namespace CRFram;

class Mail {


	public function __construct($mail, $content, $sujet) {

		$this->send($mail, $content, $sujet);
	}

	public function send($mail, $content, $sujet) {

		$passage_ligne = "\r\n";

		$message_txt = $content; 
		$message_html = '<!DOCTYPE html><html><head></head><body>' . $content . '</body></html>'; 
		
		$boundary = "-----=".md5(rand());
		$boundary_alt = "-----=".md5(rand());

		$header = "From: \"compagnidestroisrivieres.com\"<no-reply@compagnidestroisrivieres.com>".$passage_ligne;
		$header.= "Reply-to: \"compagnidestroisrivieres.com\" <no-reply@compagnidestroisrivieres.com>".$passage_ligne;
		$header.= "MIME-Version: 1.0".$passage_ligne;
		$header.= "Content-Type: multipart/mixed;".$passage_ligne." boundary=\"$boundary\"".$passage_ligne;
		
		$message = $passage_ligne."--".$boundary.$passage_ligne;
		$message.= "Content-Type: multipart/alternative;".$passage_ligne." boundary=\"$boundary_alt\"".$passage_ligne;
		$message.= $passage_ligne."--".$boundary_alt.$passage_ligne;

		$message.= "Content-Type: text/plain; charset=\"ISO-8859-1\"".$passage_ligne;
		$message.= "Content-Transfer-Encoding: 8bit".$passage_ligne;
		$message.= $passage_ligne.$message_txt.$passage_ligne;
		 
		$message.= $passage_ligne."--".$boundary_alt.$passage_ligne;
		 
		$message.= "Content-Type: text/html; charset=\"ISO-8859-1\"".$passage_ligne;
		$message.= "Content-Transfer-Encoding: 8bit".$passage_ligne;
		$message.= $passage_ligne.$message_html.$passage_ligne;

		$message.= $passage_ligne."--".$boundary_alt."--".$passage_ligne;
		 
		$message.= $passage_ligne."--".$boundary.$passage_ligne;

		mail($mail,$sujet,$message,$header);
		
		return true;

	}


}