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

<body style="background-image: url('/assets/bg-pattern-tile.jpg'); background-repeat: repeat;">




    <!-- Main Content -->
    <main class=" pt-28 md:pt-32">
        @yield('content')
    </main>


@stack('scripts')

   
</body>

</html>
