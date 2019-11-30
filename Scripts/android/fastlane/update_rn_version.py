file_path = '../../ocha-crm-rn/package.json'

def update():
    source = open(file_path, 'r')
    source_data = source.read()
    source.close()

    print("react-native: 0.46.4 to 0.49.0")
    replacement = source_data.replace('0.46.4', '0.49.0')

    dest = open(file_path, 'w')
    dest.write(replacement)
    dest.close()

