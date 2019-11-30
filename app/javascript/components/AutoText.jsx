import React from 'react'

class AutoText extends React.Component{
    constructor () {
        super();
        this.items = [
            'Jurong',
            'Changi',
            'Ang Mo Kio',
            'Tanjong Pagar',
        ];
    }

    render () {
        return (
            <div>
                <input onChange={(e) => console.log(e.target.value)} type="text" />
                    <ul>
                        {this.items.map ((item) => <li>{item}</li>)}
                    </ul>
            </div>
        )
    }
}

export default AutoText;