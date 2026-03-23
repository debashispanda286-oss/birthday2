<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Happy Birthday 🎉</title>

<style>
    body {
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #ff9a9e, #fad0c4);
        font-family: Arial, sans-serif;
        overflow: hidden;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
        color: white;
        flex-direction: column;
        animation: fadeIn 2s ease-in-out;
    }

    h1 {
        font-size: 3em;
        margin: 0;
    }

    p {
        font-size: 1.5em;
        margin-top: 15px;
    }

    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(20px);}
        to {opacity: 1; transform: translateY(0);}
    }

    .heart {
        position: absolute;
        width: 20px;
        height: 20px;
        background: red;
        transform: rotate(45deg);
        animation: float 6s infinite;
    }

    .heart::before,
    .heart::after {
        content: '';
        position: absolute;
        width: 20px;
        height: 20px;
        background: red;
        border-radius: 50%;
    }

    .heart::before {
        top: -10px;
        left: 0;
    }

    .heart::after {
        left: -10px;
        top: 0;
    }

    @keyframes float {
        0% {transform: translateY(100vh) rotate(45deg);}
        100% {transform: translateY(-10vh) rotate(45deg);}
    }
</style>
</head>

<body>

<div class="container">
    <h1>🎂 Happy Birthday! 🎂</h1>
    <p>So many years, so many memories, and still the same bond.<br>
Wishing you the happiest birthday 💙</p>
</div>

<script>
    function createHeart() {
        const heart = document.createElement('div');
        heart.classList.add('heart');
        heart.style.left = Math.random() * 100 + 'vw';
        heart.style.animationDuration = (Math.random() * 3 + 3) + 's';
        document.body.appendChild(heart);

        setTimeout(() => {
            heart.remove();
        }, 6000);
    }

    setInterval(createHeart, 300);
</script>

</body>
</html>
