file_path = '../../ocha-crm-rn/node_modules/react-native-firebase/dist/utils/events.js'

def update():
    source = open(file_path, 'r')
    source_data = source.read()
    source.close()

    print("update EventEmitter path")
    replacement = source_data.replace('vendor/emitter', 'EventEmitter')

    dest = open(file_path, 'w')
    dest.write(replacement)
    dest.close()
  
