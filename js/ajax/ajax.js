 class RequisicaoAjax{

 	constructor(){

 		this._xhr = new XMLHttpRequest();

 	}


 	enviar(event){
 		event.preventDefault();

 	}


 	requisicao(link,objHtml){
 		this._xhr.open('POST',link);

 		this._xhr.onreadystatechange = () => {
 				if(this._xhr.readyState == 4){
 					if(this._xhr.status == 200){

 						document.querySelector(objHtml).innerHTML = this._xhr.responseText;

 					}else{
 						document.querySelector(objHtml).innerHTML = "<h5>Error Requisicao Ajax</h5>";


 					}

 				}
 		}
            this._xhr.send();

 	}
 }