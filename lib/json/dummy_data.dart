final List<Map<String, String>> quizList = [
  {
    'id': "1",
    'category': 'Sports',
    'description': 'Test your knowledge of various sports and athletes.',
  },
  {
    'id': "2",
    'category': 'History',
    'description': 'Explore historical events, figures, and civilizations.',
  },
  {
    'id': "3",
    'category': 'Science',
    'description': 'Discover the wonders of the natural and physical world.',
  },
  {
    'id': "4",
    'category': 'Movies',
    'description': 'Guess the movie titles, actors, and famous quotes.',
  },
  {
    'id': "5",
    'category': 'Geography',
    'description': 'Learn about countries, capitals, and landmarks.',
  },
];

//////////////////// questions dummy data ///////////////////////

final List<Map<String, dynamic>> questionList = [
  {
    'category': 'Sports',
    "category_id": "1",
    'id': "1",
    'question': 'Who won the FIFA World Cup in 2018?',
    'correctAnswer': 'France',
    'incorrectAnswers': ['Brazil', 'Germany', 'Spain'],
  },
  {
    'category': 'Sports',
    "category_id": "1",
    'id': "2",
    'question': 'Which athlete has the most Olympic gold medals?',
    'correctAnswer': 'Michael Phelps',
    'incorrectAnswers': ['Usain Bolt', 'Serena Williams', 'Simone Biles'],
  },
  {
    'category': 'Sports',
    "category_id": "1",
    'id': "3",
    'question': 'Who is the all-time leading scorer in NBA history?',
    'correctAnswer': 'Kareem Abdul-Jabbar',
    'incorrectAnswers': ['LeBron James', 'Michael Jordan', 'Kobe Bryant'],
  },
  {
    'category': 'Sports',
    "category_id": "1",
    'id': "4",
    'question': 'Which country has won the most Olympic gold medals?',
    'correctAnswer': 'United States',
    'incorrectAnswers': ['China', 'Russia', 'Germany'],
  },
  {
    'category': 'Sports',
    "category_id": "1",
    'id': "5",
    'question': 'Who holds the record for the fastest 100m sprint?',
    'correctAnswer': 'Usain Bolt',
    'incorrectAnswers': ['Carl Lewis', 'Tyson Gay', 'Justin Gatlin'],
  },

  ///// history

  {
    'category': 'History',
    "category_id": "2",
    'id': "6",
    'question': 'In which year did World War II end?',
    'correctAnswer': '1945',
    'incorrectAnswers': ['1918', '1939', '1955'],
  },
  {
    'category': 'History',
    "category_id": "2",
    'id': "7",
    'question': 'Who was the first President of the United States?',
    'correctAnswer': 'George Washington',
    'incorrectAnswers': ['Thomas Jefferson', 'Abraham Lincoln', 'John Adams'],
  },
  {
    'category': 'History',
    "category_id": "2",
    'id': "8",
    'question': 'Which country was ruled by Adolf Hitler during World War II?',
    'correctAnswer': 'Germany',
    'incorrectAnswers': ['Italy', 'Japan', 'United Kingdom'],
  },
  {
    'category': 'History',
    "category_id": "2",
    'id': "9",
    'question': 'Who wrote the Communist Manifesto?',
    'correctAnswer': 'Karl Marx',
    'incorrectAnswers': ['Vladimir Lenin', 'Fidel Castro', 'Mao Zedong'],
  },
  {
    'category': 'History',
    "category_id": "2",
    'id': "10",
    'question': 'Which city hosted the ancient Olympic Games?',
    'correctAnswer': 'Olympia',
    'incorrectAnswers': ['Athens', 'Rome', 'Sparta'],
  },

  ///////////// science /////////////
  
   {
    'category': 'Science History',
    'category_id': '3',
    'id': '11',
    'question': 'Who is credited with discovering penicillin?',
    'correctAnswer': 'Alexander Fleming',
    'incorrectAnswers': ['Marie Curie', 'Isaac Newton', 'Albert Einstein'],
  },
  {
    'category': 'Science History',
    'category_id': '3',
    'id': '12',
    'question': 'Who proposed the theory of general relativity?',
    'correctAnswer': 'Albert Einstein',
    'incorrectAnswers': ['Isaac Newton', 'Niels Bohr', 'Galileo Galilei'],
  },
  {
    'category': 'Science History',
    'category_id': '3',
    'id': '13',
    'question': 'Who developed the first successful polio vaccine?',
    'correctAnswer': 'Jonas Salk',
    'incorrectAnswers': ['Louis Pasteur', 'Alexander Fleming', 'Robert Koch'],
  },
  {
    'category': 'Science History',
    'category_id': '3',
    'id': '14',
    'question': 'Who discovered radioactivity?',
    'correctAnswer': 'Marie Curie',
    'incorrectAnswers': ['Albert Einstein', 'Niels Bohr', 'Isaac Newton'],
  },
  {
    'category': 'Science History',
    'category_id': '3',
    'id': '15',
    'question': 'Who proposed the heliocentric model of the solar system?',
    'correctAnswer': 'Nicolaus Copernicus',
    'incorrectAnswers': ['Galileo Galilei', 'Isaac Newton', 'Johannes Kepler'],
  },


  ////////////// movies 
  
  {
    'category': 'Movies',
    'category_id': '4',
    'id': '16',
    'question': 'Which actor played the character Iron Man in the Marvel Cinematic Universe?',
    'correctAnswer': 'Robert Downey Jr.',
    'incorrectAnswers': ['Chris Evans', 'Mark Ruffalo', 'Chris Hemsworth'],
  },
  {
    'category': 'Movies',
    'category_id': '4',
    'id': '17',
    'question': 'Which film won the Academy Award for Best Picture in 2020?',
    'correctAnswer': 'Parasite',
    'incorrectAnswers': ['Joker', '1917', 'Once Upon a Time in Hollywood'],
  },
  {
    'category': 'Movies',
    'category_id': '4',
    'id': '18',
    'question': 'Who directed the movie "The Shawshank Redemption"?',
    'correctAnswer': 'Frank Darabont',
    'incorrectAnswers': ['Steven Spielberg', 'Martin Scorsese', 'Christopher Nolan'],
  },
  {
    'category': 'Movies',
    'category_id': '4',
    'id': '19',
    'question': 'Which actress won an Oscar for her role in the film "La La Land"?',
    'correctAnswer': 'Emma Stone',
    'incorrectAnswers': ['Jennifer Lawrence', 'Meryl Streep', 'Cate Blanchett'],
  },
  {
    'category': 'Movies',
    'category_id': '4',
    'id': '20',
    'question': 'Which movie features the character Jack Sparrow?',
    'correctAnswer': 'Pirates of the Caribbean',
    'incorrectAnswers': ['Harry Potter', 'The Lord of the Rings', 'The Avengers'],
  },


  ////////////  Geography 
  

  {
    'category': 'Geography',
    'category_id': '5',
    'id': '21',
    'question': 'What is the capital city of Australia?',
    'correctAnswer': 'Canberra',
    'incorrectAnswers': ['Sydney', 'Melbourne', 'Perth'],
  },
  {
    'category': 'Geography',
    'category_id': '5',
    'id': '22',
    'question': 'Which is the longest river in the world?',
    'correctAnswer': 'Nile',
    'incorrectAnswers': ['Amazon', 'Yangtze', 'Mississippi'],
  },
  {
    'category': 'Geography',
    'category_id': '5',
    'id': '23',
    'question': 'In which country is the Great Barrier Reef located?',
    'correctAnswer': 'Australia',
    'incorrectAnswers': ['Brazil', 'Indonesia', 'Mexico'],
  },
  {
    'category': 'Geography',
    'category_id': '5',
    'id': '24',
    'question': 'Which continent is the largest by land area?',
    'correctAnswer': 'Asia',
    'incorrectAnswers': ['Africa', 'North America', 'South America'],
  },
  {
    'category': 'Geography',
    'category_id': '5',
    'id': '25',
    'question': 'Which country is known as the "Land of the Rising Sun"?',
    'correctAnswer': 'Japan',
    'incorrectAnswers': ['China', 'South Korea', 'Vietnam'],
  },
  

];
