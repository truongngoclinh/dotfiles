file_path = '../ocha-crm-rn/node_modules/react-native/Libraries/NativeAnimation/RCTNativeAnimatedNodesManager.h'

def update():
    source = open(file_path, 'r')
    source_data = source.read()
    source.close()

    print("update RCTAnimation path")
    replacement = source_data.replace('<RCTAnimation/RCTValueAnimatedNode.h>', '"RCTValueAnimatedNode.h"')

    dest = open(file_path, 'w')
    dest.write(replacement)
    dest.close()
  
