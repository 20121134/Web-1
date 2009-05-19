<?php
/*
XSLTranformer -- Class to transform XML files using XSL with the Sablotron libraries.
Justin Grant (2000-07-30)
Thanks to Bill Humphries for the original examples on using the Sablotron module.
*/
include_once ("class.XSLTransformSocket.php"); //socket

class XSLTransformer {
        var $xsl, $xml, $output, $error, $processor;
//      var $xsl, $xml, $output, $error, $errorcode, $processor, $uri, $host, $port;   //socket

        /* Constructor  */
        function XSLTransformer() {
                $this->processor = xslt_create();
                if (getenv("ENV_SOCKET")=="TRUE") //socket
                {
                $this->host = "scielo3.bireme.br";
                $this->port = 8899;
                $this->socket = new XSLTransformerSocket($this->host,$this->port);
                if (!$this->socket){
                        die("socket creation error!");
                }
        }


 	/* Destructor */ 
	function destroy() { 
		xslt_free ($this->processor); 
	} 

	/* output methods */
	function setOutput ($string) {
		$this->output = $string;
	}

	function getOutput() {
		return $this->output;
	}

	/* set methods */
	function setXml ($uri) { 
		if ( $doc = new docReader ($uri) ) { 
			$this->xml	= $doc->getString(); 
			return true; 
		} 
        else { 
			$this->setError ("Could not open $xml"); 
			return false; 
		} 
	} 	

	function setXsl($uri) {
		if ( $doc = new docReader ($uri) ) {
			$this->xsl	= $doc->getString();
			return true;

		} 
        else {
			$this->setError ("Could not open $uri");
			return false;
		}
	}

	/* transform method */
    function transform()
    {
        if (getenv("ENV_SOCKET")=="TRUE"){ //socket
                $result = $this->socket->transform($this->xsl, $this->xml);
                $this->setOutput($result);
        }else{
                $args = array ( '/_xml' => $this->xml, '/_xsl' => $this->xsl );
                $result = xslt_process ($this->processor, 'arg:/_xml', 'arg:/_xsl', NULL, $args);
                if ($result) {
                    $this->setOutput ($result);
                }
                else {
                    $err = "Error: " . xslt_error ($this->processor) . " Errorcode: " . xslt_errno ($this->processor);
                    $this->setError ($err);
                }
        }
    }

	/* Error Handling */ 
	function setError ($string) { 
		$this->error = $string; 
	} 

 	function getError() { 
		return $this->error; 
	} 
}

/* docReader -- read a file or URL as a string */ 
class docReader { 
	var $string;	// public string representation of file 
	var $type;		// private URI type: 'file','url' 
	var $bignum		= 3500000; 

	/* public constructor */ 
	function docReader ($uri) {  // returns integer 
		$this->setUri ($uri); 
		$this->setType(); 
		$fp = fopen ($this->getUri(),"r"); 

		if ($fp) { 
 			// get length 
			if ( $this->getType() == 'file' ) { 
				$length = filesize ($this->getUri()); 
			}  
            else { 
				$length = $this->bignum; 
 			} 
			$acumulado = "";
			while (!feof($fp)){
				$acumulado .= fread ($fp, $length);
			}
			$this->setString ($acumulado);

			/* $this->setString (fread ($fp, $length)); */
			fclose($fp);

			return 1; 
		} 
        else { 
			return 0; 
		} 
	} 

	/* determine if a URI is a filename or URL */ 
	function isFile ($uri) { 	// returns boolean 
		if (strstr ($uri,'http://') == $uri) { 
			return false; 
		} 
        else { 
			return true; 
		} 
	} 

	/* set and get methods */ 
	function setUri ($string) { 
		$this->uri = $string; 
	} 

	function getUri() { 
		return $this->uri; 
	} 

	function setString ($string) { 
		$this->string = $string; 
	} 

	function getString() { 
		return $this->string; 
	} 

	function setType() { 
		if ( $this->isFile ($this->uri) ) { 
			$this->type = 'file'; 
		} 
        else { 
			$this->type = 'url'; 
		}	 
	} 

	function getType() { 
		return $this->type; 
	} 
} 

?>