import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import { createStore } from 'redux';

let store = createStore();

ReactDOM.render(<App />, document.getElementById('root'));
