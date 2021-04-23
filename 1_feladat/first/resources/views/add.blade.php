<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
    <title>Document</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    Ködmön Zoltán
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
       <!-- <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a> -->
            <a class="nav-item nav-link active" href="/laravelapps/first/server.php/list">Listázás </a>
            <a class="nav-item nav-link active" href="/laravelapps/first/server.php/add">Hozzáadás</a>    
        </div>
    </div>
    </nav>

    <div class="container">


   
   <!-- <form action="/laravelapps/first/server.php/add" method="POST">
        @csrf
        <input type="text" name="username" placeholder="username"><br>
        <span style="color: red">@error('username'){{$message}}@enderror</span> <br>
        <input type="passsword" name="password" placeholder="password"><br>
        <span style="color: red">@error('password'){{$message}}@enderror</span> <br>
        <button type="submit">OK</button>
    </form> -->




       <h1>Hozzáadás form</h1>

       

        

        

        <form method="post" action="/laravelapps/first/server.php/add">
        @csrf
            <div class="form-group">
                <label>Tulajdonos: </label>
                <input type="text" name="tulajdonos" placeholder="Tulajdonos">
                <span style="color: red">@error('tulajdonos'){{$message}}@enderror</span> <br>
            </div>
            <div class="form-group">
                <label>Autók: </label>
                <select name="auto" id="auto">
                    @foreach($autos as $auto)
                        <option value="{{$auto['megnevezes']}}">{{$auto['megnevezes']}}</option>
                    @endforeach
                </select>
                <span style="color: red">@error('auto'){{$message}}@enderror</span> <br>
            </div>
            <div class="form-group">
            <input type="checkbox" id="garancialis" name="garancialis" value="true">
            <label for="garancialis">Garanciális</label><br>
            <span style="color: red">@error('garancialis'){{$message}}@enderror</span> <br>
            </div>
            <div class="form-group">
                <label>Az autó kora: </label> <br>
                <input type="radio" id="eletkor" name="eletkor" value="0-5">
                <label for="0-5">0-5</label><br>
                <input type="radio" id="eletkor" name="eletkor" value="5-10">
                <label for="5-10">5-10</label><br>
                <input type="radio" id="eletkor" name="eletkor" value="10-">
                <label for="10-">10+</label> 
                <span style="color: red">@error('eletkor'){{$message}}@enderror</span> <br>
            </div>
            <div class="form-group">
            <label for="szervizkezdete">Szerviz kezdete:</label>
            <input type="datetime-local" id="szervizkezdete" name="szervizkezdete"> 
            </div> 
            <div class="form-group">
                <button class="btn btn-success">Küldés</button>
            </div>
        </form>
    </div> 




    <table border="1">
        <tr>    
            <td>Id</td>
            <td>Megnevezés</td>
        </tr>
        @foreach($autos as $auto)
        <tr>
            <td>{{$auto['id']}}</td>
            <td>{{$auto['megnevezes']}}</td>
        </tr>
        @endforeach
    </table>
</body>
</html>