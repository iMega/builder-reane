import { AppRegistry } from 'react-native'
import App from './src/components/App'

class lolo extends App {
    static defaultProps = {
        ...App.defaultProps,
        instructions: '1Press Cmd+R to reload,\nCmd+D or shake for dev menu',
    };
}

AppRegistry.registerComponent('lolo', () => lolo);
