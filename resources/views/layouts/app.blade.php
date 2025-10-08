<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Webpage')</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">

    <!-- Tailwind CSS via Vite -->
    @vite(['resources/css/app.css'])

    @stack('styles')
</head>

<body class="bg-[url(/assets/backside.jpg)] ">


    <!-- Main Content -->
    <main class="pt-28 md:pt-32">
        @yield('content')
    </main>



   
</body>

</html>
