# Importamos las liberias del robot.
from easygopigo3 import EasyGoPiGo3

# Importamos la libreria time para hacer delays.
import time


# Creamos un objeto de la clase EasyGoPiGo3. Este objeto tendra disponible
# todos los metodos y propiedades del robot.
gpg = EasyGoPiGo3()

# Creamos una variable para almacenar la velocidad a la que queremos que se
# mueva nuestro robot.
speed = 400

# Creamos una variable para almacenar el tiempo de la pausa.
seconds = 2

# Fijamos la velocidad del robot.
gpg.set_speed(speed)

# Movemos el robot hacia adelante.
gpg.forward()

# Hacemos una pausa de 2 segundos durante la cual el robot ira hacia adelante.
time.sleep(seconds)

# Paramos los motores.
gpg.stop()