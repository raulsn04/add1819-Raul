#Este script realiza copias del directorio del usuario.
#Copia todo el contenido a una unidad externa.
#/E copia todos los directorios y subdirectorios.
#/Y Confirma que se sobreescriba todo.
#/C Copia sin detenerse aunque haya error en archivos.
#/I Si el destino no existe, se crea un directorio.
#variable para que detecte usuario  automaticamente.
#arvg help que muestre información.

argument = ARGV[0].to_s

user = `whoami`.chomp.split("\\")[1]
def ver_titulo
  puts "Creando copia de seguridad..."
end
def ver_fin
  puts "Copia finalizada"
end

if argument == "help"
  puts '''Copia de seguridad del usuario

Realiza copias del directorio del usuario a nuestra
unidad externa de memoria que conectemos

'''
exit
end

puts ver_titulo
system("xcopy /E /I /C /Y C:\\Users\\#{user} E:\\Raul")
puts ver_fin
