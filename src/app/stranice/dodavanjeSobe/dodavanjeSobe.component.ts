import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Headers} from '@angular/http';
import { Router } from '@angular/router';


@Component({
  selector: 'app-dodavanjeSobe',
  templateUrl: './dodavanjeSobe.component.html',
  styleUrls: ['./dodavanjeSobe.component.css']
})
export class DodavanjeSobeComponent implements OnInit {

  public dodavanjeSobeForm = new FormGroup({
    broj: new FormControl(),
    naziv: new FormControl(),
    tv: new FormControl(),
    kvadrati: new FormControl(),
    kreveti: new FormControl()
  });

  constructor(private _http: Http, private _router: Router) { }
  


  ngOnInit() {
  }

  public dodajSobu() {
    var data = "broj="+this.dodavanjeSobeForm.value.broj+"&naziv="+this.dodavanjeSobeForm.value.naziv+"&tv="+this.dodavanjeSobeForm.value.tv+"&kvadrati="+this.dodavanjeSobeForm.value.kvadrati+"&kreveti="+this.dodavanjeSobeForm.value.kreveti;
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append("token",localStorage.getItem("token"));
    this._http.post('http://localhost:8080/IT255-DZ12/dodavanjeSobe.php',data, { headers:headers }).subscribe( data => {
      
          if(data["_body"].indexOf("error") === -1){
            alert("Uspesno dodavanje sobe");
            this._router.navigateByUrl('pretraga');
          }else{
            alert("Neuspesno dodavanje sobe");
          }
          // console.log(JSON.parse)
        }
      );

 

  }
}
