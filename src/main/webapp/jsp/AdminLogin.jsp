<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0f0f0;
        }

        h1 {
            color: #333;
        }

        form {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            margin: 20px auto;
            max-width: 500px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        legend {
            font-weight: bold;
        }

        table {
            width: 100%;
            margin-top: 10px;
        }

        th {
            text-align: left;
        }

        input[type="email"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button[type="reset"] {
            background-color: #ccc;
            color: #333;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h1>Admin Login</h1>
    <form action="">
        <fieldset>
            <legend>Login Here,</legend>
            <table>
                <tr>
                    <th>Email:</th>
                    <th><input type="email" name="email" required /></th>
                </tr>
                <tr>
                    <th>Password:</th>
                    <th><input type="password" name="password" required /></th>
                </tr>
                <tr>
                    <th><button>Login</button></th>
                    <th><button type="reset">Cancel</button></th>
                </tr>
            </table>
        </fieldset>
    </form>
    <br />
    <a href="/"><button>Back</button></a>
</body>
</html>
