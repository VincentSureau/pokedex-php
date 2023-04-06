<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pokedex</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="app.css">
</head>
<body class="bg-dark text-light">
    <nav class="navbar fixed-top navbar-dark type-grass px-3">
        <a class="navbar-brand" href="#">Pokedex</a>
    </nav>
    <main>
        <section class="col-12 shadow card type-grass with-padding-top rounded-container">
            <div class="pokemon card type-grass border-0 text-light col-8 col-sm-6 col-md-4 mx-auto">
                <img src="images/001.png" class="card-img-top p-3">
                <div class="card-body px-0">
                </div>
            </div>
        </section>
        <section class="pt-3">
            <h1 class="text-center">
                #<?= 1 ?> Bulbizarre  
            </h1>
            <div class="d-flex justify-content-center mb-4">
                <span class="badge rounded-pill type-grass mx-1">Plante</span>
                <span class="badge rounded-pill type-grass mx-1">Plante</span>
            </div>
            <div class="d-flex justify-content-center mb-2">
                <div class="d-flex flex-column px-2 text-center">
                    <span class="h3">90.5 KG</span>
                    <span>Weight</span>
                </div>
                <div class="d-flex flex-column px-2 text-center">
                    <span class="h3">1.7 M</span>
                    <span>Height</span>
                </div>
            </div>
        </section>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>