
class Dividir_pizza():

    def __init__(self):
        self.pizza = 10
        try:
            persona = int(input("Cuantas perosonas van a comer: "))
            cant_pizza = int(input("Cuantas cajas de pizza van a comprar: "))
            persona_especiales = int(input("Cuantas personas quieren solo 2 personas: "))
            if(persona>=1 and cant_pizza>=1):
                self.calcular(persona,cant_pizza)
            else:
                print("Introdujo uno de los valores en CERO")
        except:
            print("Introdujo unos datos invalido")


    def calcular(self, persona, cant_pizza):
        total_pedazo = cant_pizza * self.pizza

        Lista_persona = {}
        for i in range(persona):
            Lista_persona[f'persona_{i+1}']=[]

        persona_inicial = 0
        for i in range(total_pedazo):

            if(persona_inicial<persona):
                persona_inicial=persona_inicial+1
            else:
                persona_inicial=1
            Lista_persona[f'persona_{persona_inicial}'].append(1)

        for i in range(persona):
            pedazos = sum(Lista_persona[f'persona_{i+1}'])
            print(f"La persona {i+1}, tocara {pedazos} pedazo de pizza")

        print(f'Total de pedazo de pizza: {total_pedazo}')



Dividir_pizza()
