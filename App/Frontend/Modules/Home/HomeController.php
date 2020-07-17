<?php
namespace App\Frontend\Modules\Home;

use \CRFram\BackController;
use \CRFram\HTTPRequest;
use \CRFram\FormHandler;
use \CRFram\Mail;
// use \swiftmailer;

// require_once '/home/maje8745/public_html/vendor/autoload.php'; ///////

class HomeController extends BackController
{

  public function executeIndex(HTTPRequest $request)
  {
    //gtep rejudices for the map section 
    $listeNews = "Stephane";

    $this->managers->getManagerOf('Recover')->removeCodeAfter();

    $manager = $this->managers->getManagerOf('Prejudices');
    $prejudices = $manager->getAll('LIMIT 6');

     $nombreCaracteres = $this->app->config()->get('nombre_caracteres_2');

    foreach ($prejudices as $pred)
    {
      if (strlen($pred->Description()) > $nombreCaracteres)
      {
        $debut = substr($pred->Description(), 0, $nombreCaracteres) . '...';        
        $pred->setDescription($debut);
        
      }
    }
    
    $this->page->addVar('prejudices', $prejudices);    
    $this->page->addVar('upTitle', ' - home');
    $this->page->addVar('recapcha', '');
    $this->page->addVar('listeNews', $listeNews);
    
  }

  // show 'Fete de Montby' page 
  public function executeOrganisation(HTTPRequest $request)
  {

    $this->managers->getManagerOf('Recover')->removeCodeAfter();
    
    $listeNews = "Organisation";
    
    $this->page->addVar('upTitle', ' - organisation');
    $this->page->addVar('recapcha', '');
    $this->page->addVar('listeNews', $listeNews);
    
  }

  // show contact page 
//   public function executeContact(HTTPRequest $request)
//   {

//     $this->managers->getManagerOf('Recover')->removeCodeAfter();
    
//     $listeNews = "Contact";

//     if($request->method() === 'POST') {

// 		define("RECAPTCHA_V3_SECRET_KEY", '[key]');
 
// 		$name = filter_input(INPUT_POST, $_POST['name'], FILTER_VALIDATE_EMAIL);
// 		$mail = filter_input(INPUT_POST, $_POST['email'], FILTER_SANITIZE_STRING);
// 		$message = filter_input(INPUT_POST, $_POST['message'], FILTER_SANITIZE_STRING);
		 
// 		$token = $_POST['token'];
// 		$action = $_POST['action'];
		 
// 		// call curl to POST request
// 		$ch = curl_init();
// 		curl_setopt($ch, CURLOPT_URL,"https://www.google.com/recaptcha/api/siteverify");
// 		curl_setopt($ch, CURLOPT_POST, 1);
// 		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array('secret' => RECAPTCHA_V3_SECRET_KEY, 'response' => $token)));
// 		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// 		$response = curl_exec($ch);
// 		curl_close($ch);
// 		$arrResponse = json_decode($response, true);

//         if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['message'])) {

//           if(preg_match('#[a-z0-9._-]{1,10}@[a-z0-9._-]{1,10}\.[a-z]{1,3}#isU' , $_POST['email'])) {

//           	if($arrResponse["success"]) {

//                 $ch = curl_init('/contact');
//                 curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);

//                 $mail = new Mail('kergoane@gmail.com', '<h2>' . $_POST['name'] . ' a écrit : </h2><p style="font-size:15px;font-weight:700;">' . $_POST['message'] . '</p><h3> Son mail : ' . $_POST['email'] . '</h3>', 'demande de renseignement');

//                 $this->app->user()->setFlash('message envoyé'); 

//               }
//               else {

//                 $this->page->addVar('errorMessage', 'Capcha invalide');

//               }
//           }    
//           else {

//             $this->page->addVar('errorMessage', 'veuillez entrer un mail valide, svp');

//           }

//        }
//        else {

//           $this->page->addVar('errorMessage', 'veuillez remplir tous les champs, svp');

//        }                

//     }
       
//     $this->page->addVar('upTitle', ' - contact');
//     $this->page->addVar('recapcha', '<script src="[key]"></script>');
//     $this->page->addVar('listeNews', $listeNews);
    
//   }

// } 