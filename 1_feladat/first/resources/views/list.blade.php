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


    <h1>Listázz</h1>
    <form>
    <table border="1">
        <tr>    
            <td>Tulajdonos</td>
            <td>Auto megnevezése</td>
            <td>Garancia</td>
            <td>Auto életkora</td>
            <td>Szervízkezdete</td>
            <td>Törlés</td>
        </tr>
        @foreach($autos as $auto)
        <tr>
            <?php if ($auto['szerviz_vege'] == null): ?>
                <td>{{$auto['tulajdonos']}}</td>
                <td>{{$auto['auto']}}</td>
                <td>{{$auto['garancialis']}}</td>
                <td>{{$auto['eletkor']}}</td>
                <td>{{$auto['szerviz_kezdete']}}</td>
                <td><button class="btn btn-delete">Törlés</button></td>
            <?php endif ?>
        </tr>
        @endforeach
    </table>
    </form>

</body>
</html>