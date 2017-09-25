const people = (state = [], action) => {
  switch (action.type) {
    case 'PEOPLE':
      return action.people;
    case 'ADD_PERSON':
     return [...state, action.person]
    case 'UPDATE_PERSON':
     return state.map( person => {
       if (person.id === action.person.id)
        return action.person
      return person
     })
     case 'DELETE_PERSON':
      return state.filter( person => person.id !== action.id)
    default:
    return state;

  }
}

export default people;
