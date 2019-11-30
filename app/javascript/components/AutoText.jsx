import React from 'react'
import '../../assets/stylesheets/AutoText.scss'

class AutoText extends React.Component{
    constructor () {
        super();
        this.items = [
            'Jurong',
            'Changi',
            'Choa Chu Kang',
            'Ang Mo Kio',
            'Tanjong Pagar',
        ];
        this.state = {
            suggestions: [],
            text: "",
        }
    }

    onTextChange = (e) => {
        const value = e.target.value;
        let suggestions = [];
        if (value.length > 0 ){
            const regex = new RegExp(`^${value}`, 'i');
            suggestions = this.items.sort().filter(v => regex.test(v));
        }
        this.setState(() => ({ suggestions, text: value }) );
    }

    suggestionSelected (value){
        this.setState(() => ({
            text: value,
            suggestions: [],
        }))
    }
    renderSuggestions () {
        const {suggestions} = this.state;
        if (suggestions.length === 0){
            return null;
        }
        return (
            <ul>
                {suggestions.map ((item) => <li onClick={() => this.suggestionSelected(item)}>{item}</li>)}
            </ul>
        );
    }

    render () {
        const {text} = this.state;
        return (
            <div>
                <div className="AutoText">
                    <input value={text} onChange={this.onTextChange} type="text" />
                    {this.renderSuggestions ()}
                </div>
                <button className="Searchbtn">Search</button>
            </div>
        )
    }
}

export default AutoText;