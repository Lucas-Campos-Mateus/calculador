<!DOCTYPE html>
<html>
<head>
	<title>Calculadora Simples</title>
</head>
<body>
	<h1>Calculadora Simples</h1>
	<form method="post" action="">
	
		<input type="text" name="num1" placeholder="Digite o primeiro número" required><br><br>
		<input type="text" name="num2" placeholder="Digite o segundo número" required><br><br>
		
		<select name="operacao">
			<option value="soma">+</option>
			<option value="subtracao">-</option>
			<option value="multiplicacao">*</option>
			<option value="divisao">/</option>
		</select><br><br>
		
		<input type="submit" name="calcular" value="Calcular">
	</form>

	<%
		if(request.getParameter("calcular") != null) {
			float num1 = Float.parseFloat(request.getParameter("num1"));
			float num2 = Float.parseFloat(request.getParameter("num2"));
			String operacao = request.getParameter("operacao");
			double resultado = 0;

			switch(operacao) {
				case "soma":
					resultado = num1 + num2;
					break;
				case "subtracao":
					resultado = num1 - num2;
					break;
				case "multiplicacao":
					resultado = num1 * num2;
					break;
				case "divisao":
					resultado = num1 / num2;
					break;
			}

			out.println("<br><br>O resultado é: " + resultado);
		}
	%>
</body>
</html>