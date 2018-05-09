#version 330 core
//La primera linea es la version
//Atributos de entrada
layout(location = 0) in vec4 posicion;
in vec4 color;

uniform mat4 modelo;
uniform mat4 vista;
uniform mat4 proyeccion;

//Atributos
out vec4 fragmentColor;


//Funcion main
void main() {
	//crear la matris MVP
	mat4 MVP = proyeccion * vista * modelo;
	//La posicion de salida del Vertice
	//Se guarda en gl_Position(vec4)
	gl_Position = MVP * posicion;

	//Establecer valor de fragmentos
	fragmentColor = color;

}
