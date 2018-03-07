import React, { Component } from 'react';
import { AppRegistry, StyleSheet, Text, View, NativeModules, TouchableOpacity } from 'react-native';
var NativeModuleManager = NativeModules.NativeModuleManager

class ReactNativeScreen extends Component {

  _backToNative = () => {
    NativeModuleManager.backToNative()
  }

  render() {
    // var contents = this.props['scores'].map((score) => (
    //   <Text key={score.name}>
    //     {score.name}:{score.value}
    //     {'\n'}
    //   </Text>
    // ));
    // return (
    //   <View style={styles.container}>
    //     <Text style={styles.highScoresTitle}>2048 High Scores!</Text>
    //     <Text style={styles.scores}>{contents}</Text>
    //   </View>
    // );
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>React Native Screen</Text>
        <TouchableOpacity onPress={this._backToNative}>
          <Text style={styles.scores}>Back To Native</Text>
        </TouchableOpacity>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

// Module name
AppRegistry.registerComponent('IntegrationRNObjC', () => ReactNativeScreen);