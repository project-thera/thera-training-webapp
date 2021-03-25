# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

daniffig = User.create({ email: 'daniffig@gmail.com' })

# p01 = Phase.create number: 1, name: 'Fase #1'

# p01e01 = p01.exercises.create name: 'Reposo'
# p01e02 = p01.exercises.create name: 'Protruir con boca abierta'
# p01e03 = p01.exercises.create name: 'Protruir con boca cerrada'
# p01e04 = p01.exercises.create name: 'Retruir con boca abierta'
# p01e05 = p01.exercises.create name: 'Retruir con boca cerrada'
# p01e06 = p01.exercises.create name: 'Inflar cachetes'
# p01e07 = p01.exercises.create name: 'Caramelo'
# p01e08 = p01.exercises.create name: 'Morder labios'
# p01e09 = p01.exercises.create name: 'Lateralizar'
# p01e10 = p01.exercises.create name: 'Rozar dientes'
# p01e11 = p01.exercises.create name: 'Tocar con lengua'
# p01e12 = p01.exercises.create name: 'Tocar con lengua'
# p01e13 = p01.exercises.create name: 'Tocar con lengua'

# p01e01.stages.create({
#   name: 'Rostro en reposo',
#   description: 'Tomarse una foto con el rostro en reposo, relajado.',
#   order: 1
# })

# p01e06.stages.create({
#   name: 'Inflar cachete derecho',
#   description: 'Inflar el cachete derecho',
#   video_link: 'https://www.youtube.com/embed/cYtGJGp-9hA',
#   order: 1
# })

# p01e06.stages.create({
#   name: 'Inflar cachete izquierdo',
#   description: 'Inflar el cachete izquierdo',
#   video_link: 'https://www.youtube.com/embed/gtwjIr6timY',
#   order: 2
# })

# p01e07.stages.create({
#   name: 'Caramelo arriba',
#   description: 'Colocar la lengua dentro de la boca, por encima del labio superior, como jugando con un caramelo.',
#   order: 1
# })

# p01e07.stages.create({
#   name: 'Caramelo a la derecha',
#   description: 'Colocar la lengua dentro de la boca, a la derecha de la comisura derecha de los labios, como jugando con un caramelo.',
#   order: 2
# })

# p01e07.stages.create({
#   name: 'Caramelo abajo',
#   description: 'Colocar la lengua dentro de la boca, debajo del labio inferior, como jugando con un caramelo.',
#   order: 3
# })

# p01e07.stages.create({
#   name: 'Caramelo a la izquierda',
#   description: 'Colocar la lengua dentro de la boca, a la izquierda de la comisura izquierda de los labios, como jugando con un caramelo.',
#   order: 4
# })


# Reposo
# Inflar cachete derecho
# Inflar cachete izquierdo
# Inflar ambos cachetes
# Lateralizar boca a la derecha
# Lateralizar boca a la izquierda
# Lengua arriba
# Lengua a la derecha
# Lengua abajo
# Lengua a la izquierda
# Protruir con boca abierta
# Protruir con boca cerrada
# Caramelo arriba
# Caramelo a la derecha
# Caramelo abajo
# Caramelo a la izquierda
# Retruir con boca abierta
# Retruir con boca cerrada
# Morder labio superior
# Morder labio inferior

# Boca abierta, lengua abajo
# Boca abierta, lengua al paladar
# Conejo


Stage.create([
  {
    name: 'Rostro en reposo',
    description: 'Vamos a tomar una foto de nuestro rostro en reposo. Para eso, vamos a presionar el botón TOMAR FOTO, y utilizando la cámara frontal de nuestro celular el posición vertical, relajamos toda la cara, y sin sonreir nos tomamos una selfie. ¡Muy bien! Ahora, presioná el botón ENVIAR FOTO.',
    label: 'reposo',
    video_id: 'xQSxWi4q4Jk'
  },
  {
    name: 'Inflar cachete derecho',
    description: 'Vamos a tomarnos una foto inflanco el cachete derecho. Presionamos el botón TOMAR FOTO y utilizando la cámara frontal de nuestro teléfono en modo vertical, relajamos el rostro e inflamos el cachete derecho. ¡Genial!',
    label: 'inflar_cachete_derecho',
    video_id: 'YcPZOxlOUx4'
  },
  {
    name: 'Inflar cachete izquierdo',
    description: 'Vamos a tomar una foto inflando el cachete izquierdo. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu teléfono en modo vertical, inflamos el cachete izquierdo. ¡Excelente!',
    label: 'inflar_cachete_izquierdo',
    video_id: 's4xUkOlSr8Y'
  },
  {
    name: 'Inflar ambos cachetes',
    description: 'Vamos a tomar una foto inflando ambos cachetes. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu teléfono en modo vertical, relajá el rostro e inflá los dos cachetes. ¡Muy bien!',
    label: 'inflar_cachetes',
    video_id: 'JGatyghEZ0A'
  },
  {
    name: 'Lateralizar boca a la derecha',
    description: 'Vamos a tomarnos una foto lateralizando la boca a la derecha. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, relajá el rostro y mové toda la boca hacia la derecha. ¡Muy bien!',
    label: 'lateralizar_boca_derecha',
    video_id: 'Hy416uz6rIU'
  },
  {
    name: 'Lateralizar boca a la izquierda',
    description: 'Vamos a tomarnos una foto lateralizando la boca a la izquierda. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, relajá el rostro y mové toda la boca hacia la izquierda. ¡Muy bien!',
    label: 'lateralizar_bocha_izquierda',
    video_id: 'eC2ziQlMu98'
  },
  {
    name: 'Lengua hacia arriba',
    description: 'Vamos a tomarnos una foto con la lengua arriba. Presioná el botón TOMAR FOTO, y utilizando la cámara frontal de tu celular en modo vertical intentá tocarte la nariz con la punta de la lengua. ¡Excelente!',
    label: 'lengua_arriba',
    video_id: 'Lgzpw8JL51c'
  },
  {
    name: 'Lengua hacia la derecha',
    description: 'Vamos a tomarnos una foto sacando la lengua hacia la derecha. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, tratá de tocarte la parte derecha de la cara con la punta de la lengua. ¡Genial!',
    label: 'lengua_derecha',
    video_id: '9-74banucko'
  },
  {
    name: 'Lengua hacia abajo',
    description: 'Vamos a tomarnos una foto sacando la lengua hacia abajo. Presioná el botón TOMAR FOTO, y utilizando la cámara frontal de tu celular en modo vertical sacá la lengua intentando tocarte el mentón. ¡Muy bien!',
    label: 'lengua_abajo',
    video_id: 'eutYU9ikWbI'
  },
  {
    name: 'Lengua hacia la izquierda',
    description: 'Vamos a tomarnos una foto sacando la lengua hacia la izquierda. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, sacá la lengua hacia el cachete izquierdo. ¡Excelente!',
    label: 'lengua_izquierda',
    video_id: 'ayQ28RgB4ds'
  },
  {
    name: 'Protruir con la boca cerrada',
    description: 'Vamos a protruir con la boca cerrada y tomarnos una foto. Presioná el botón TOMAR FOTO, y utilizando la cámara frontal de tu celular en modo vertical adelantá los labios con la boca cerrada, como si fueras a dar un beso. ¡Excelente!',
    label: 'protruir_boca_cerrada',
    video_id: 'y9gUt_CS1sk'
  },
  {
    name: 'Protruir con la boca abierta',
    description: 'Vamos a protruir con la boca abierta y tomarnos una foto. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, adelantá los labios con la boca abierta enseñando los dientes. ¡Genial!',
    label: 'protruir_boca_abierta',
    video_id: 'n7IRB-I6K4U'
  },
  {
    name: 'Caramelo hacia arriba',
    description: 'Vamos a hacer de cuenta que tenemos un caramelo en la boca y lo movemos con la lengua. En este caso, el caramelo está detrás del labio superior. ¡Muy bien!',
    label: 'caramelo_arriba',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Caramelo hacia la derecha',
    description: 'Vamos a hacer de cuenta que tenemos un caramelo en la boca y lo movemos con la lengua. En este caso, el caramelo está detrás de la comisura derecha. ¡Excelente!',
    label: 'caramelo_derecha',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Caramelo hacia abajo',
    description: 'Vamos a hacer de cuenta que tenemos un caramelo en la boca y lo movemos con la lengua. En este caso, el caramelo está detrás del labio inferior. ¡Muy bien!',
    label: 'caramelo_abajo',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Caramelo hacia la izquierda',
    description: 'Vamos a hacer de cuenta que tenemos un caramelo en la boca y lo movemos con la lengua. En este caso, el caramelo está detrás de la comisura izquierda de la boca. ¡Perfecto!',
    label: 'caramelo_izquierda',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Retruir con la boca cerrada',
    description: 'Vamos a retruir con la boca cerrada y tomarnos una foto. Presioná el botón TOMAR FOTO y mirando a la cámara frontal de tu celular en modo vertical, hacé la sonrisa más falsa que te salga, con la boca cerrada. ¡Excelente!',
    label: 'retruir_cerrada',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Retruir con la boca abierta',
    description: 'Vamos a retruir con la boca abierta. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, hacé la sonrisa más falsa que te salga, mostrando los dientes. ¡Excelente!',
    label: 'retruir_abierta',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Morder el labio superior',
    description: 'Vamos a tomarnos una foto mordiéndonos el labio superior. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, mordete con los dientes inferiores el labio superior como si fueras el monstruo de Frankenstein. ¡Muy bien! ',
    label: 'morder_labio_superior',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Morder el labio inferior',
    description: 'Vamos a tomarnos una foto mordiéndonos el labio superior. Presioná el botón TOMAR FOTO y utilizando la cámara frontal de tu celular en modo vertical, mordete con los dientes superiores el labio inferior como si fueras un vampiro. ¡Perfecto! ',
    label: 'morder_labio_inferior',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Boca abierta, lengua abajo',
    description: 'Vamos a tomarnos una foto con la boca abierta y la lengua en reposo escondida detrás de los dientes inferiores. Presioná el botón TOMAR FOTO y con la cámara frontal de tu celular en modo vertical, abrí la boca y escondé la lengua detrás de los dientes de abajo. ¡Perfecto!',
    label: 'boca_abierta_lengua_abajo',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Boca abierta, lengua arriba',
    description: 'Vamos a tomarnos una foto con la boca abierta y la lengua hacia arriba. Presioná el botón TOMAR FOTO y con la cámara frontal de tu celular en modo vertical, abrí la boca y escondé la lengua detrás de los dientes de arriba. ¡Muy bien!',
    label: 'boca_abierta_lengua_arriba',
    video_id: 'XpjHZv4zWxs'
  },
  {
    name: 'Conejito',
    description: 'Vamos a tomarnos una foto haciendo boca de conejito. Presioná el botón TOMAR FOTO y con la cámara frontal de tu celular en modo vertical, sacá todo el aire de la boca y juntá los cachetes para que tu boca se parezca a la de un conejo. ¡Muy bien!',
    label: 'conejito',
    video_id: 'XpjHZv4zWxs'
  }
])