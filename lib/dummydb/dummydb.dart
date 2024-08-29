import 'package:quiz_app/view/image_constant/imageconstant.dart';

class Dummydb {
  static const List CategoryList = [
    {
      'image': ImageConstant.BASKET,
      'category': 'SPORTS',
      'list': [
        {
          'question': 'Which sport is known as "the beautiful game"?',
          'options': ['Basketball', 'Soccer', 'Tennis', 'Baseball'],
          'answer': 1,
        },
        {
          'question':
              'How many players are on a standard basketball team on the court?',
          'options': ['5', '6', '7', '8'],
          'answer': 0,
        },
        {
          'question': 'In which sport would you perform a slam dunk?',
          'options': ['Football', 'Basketball', 'Volleyball', 'Hockey'],
          'answer': 1,
        },
        {
          'question':
              'What is the maximum number of players on a football (soccer) team on the field at one time?',
          'options': ['9', '10', '11', '12'],
          'answer': 2,
        },
        {
          'question': 'Which country won the FIFA World Cup in 2018?',
          'options': ['Brazil', 'France', 'Germany', 'Argentina'],
          'answer': 1,
        },
        {
          'question':
              'What is the name of the championship trophy awarded in the NHL?',
          'options': [
            'Stanley Cup',
            'Lombardi Trophy',
            'World Series Trophy',
            'Champions League Trophy'
          ],
          'answer': 0,
        },
        {
          'question':
              'Which sport uses the term "ace" for a serve that cannot be returned?',
          'options': ['Tennis', 'Golf', 'Baseball', 'Hockey'],
          'answer': 0,
        },
        {
          'question': 'In baseball, how many bases are there on the field?',
          'options': ['3', '4', '5', '6'],
          'answer': 1,
        },
        {
          'question': 'Which of these is NOT a position in American football?',
          'options': ['Quarterback', 'Forward', 'Linebacker', 'Running Back'],
          'answer': 1,
        },
        {
          'question': 'Which athlete is known as "The Greatest" in boxing?',
          'options': [
            'Mike Tyson',
            'Floyd Mayweather',
            'Muhammad Ali',
            'George Foreman'
          ],
          'answer': 2,
        },
      ]
    },
    {
      'image': ImageConstant.HISTORY,
      'category': 'HISTORY',
      'list': [
        {
          'question': 'Who was the first President of the United States?',
          'options': [
            'Thomas Jefferson',
            'George Washington',
            'Abraham Lincoln',
            'John Adams'
          ],
          'answer': 1,
        },
        {
          'question': 'In which year did the Titanic sink?',
          'options': ['1912', '1905', '1898', '1923'],
          'answer': 0,
        },
        {
          'question': 'What ancient civilization built the pyramids of Giza?',
          'options': ['Romans', 'Greeks', 'Egyptians', 'Mayans'],
          'answer': 2,
        },
        {
          'question': 'Who was the first woman to win a Nobel Prize?',
          'options': [
            'Marie Curie',
            'Rosalind Franklin',
            'Jane Goodall',
            'Ada Lovelace'
          ],
          'answer': 0,
        },
        {
          'question':
              'Which war was fought between the North and South regions of the United States?',
          'options': [
            'World War I',
            'The Civil War',
            'World War II',
            'The Revolutionary War'
          ],
          'answer': 1,
        },
        {
          'question':
              'Who was the leader of the Soviet Union during World War II?',
          'options': [
            'Vladimir Lenin',
            'Joseph Stalin',
            'Nikita Khrushchev',
            'Leon Trotsky'
          ],
          'answer': 1,
        },
        {
          'question': 'The Berlin Wall fell in which year?',
          'options': ['1987', '1989', '1991', '1993'],
          'answer': 1,
        },
        {
          'question':
              'Which empire was known as the "Empire on which the sun never sets"?',
          'options': [
            'Ottoman Empire',
            'British Empire',
            'Roman Empire',
            'Mongol Empire'
          ],
          'answer': 1,
        },
        {
          'question':
              'Who was the famous queen of ancient Egypt known for her beauty and political acumen?',
          'options': ['Cleopatra', 'Nefertiti', 'Hatshepsut', 'Maatkare'],
          'answer': 0,
        },
        {
          'question': 'What was the primary language of the Roman Empire?',
          'options': ['Greek', 'Latin', 'Aramaic', 'Coptic'],
          'answer': 1,
        },
      ]
    },
    {
      'image': ImageConstant.GROGRAPHY,
      'category': 'GEOGRAPHY',
      'list': [
        {
          'question': 'What is the largest ocean on Earth?',
          'options': [
            'Atlantic Ocean',
            'Indian Ocean',
            'Arctic Ocean',
            'Pacific Ocean'
          ],
          'answer': 3,
        },
        {
          'question': 'Which country is the largest by land area?',
          'options': ['Canada', 'China', 'United States', 'Russia'],
          'answer': 3,
        },
        {
          'question': 'What is the longest river in the world?',
          'options': [
            'Amazon River',
            'Nile River',
            'Yangtze River',
            'Mississippi River'
          ],
          'answer': 1,
        },
        {
          'question': 'Which continent is known as the "Dark Continent"?',
          'options': ['Asia', 'Africa', 'South America', 'Australia'],
          'answer': 1,
        },
        {
          'question': 'What is the capital city of Australia?',
          'options': ['Sydney', 'Melbourne', 'Canberra', 'Brisbane'],
          'answer': 2,
        },
        {
          'question': 'Which mountain range separates Europe from Asia?',
          'options': ['Andes', 'Rockies', 'Himalayas', 'Ural Mountains'],
          'answer': 3,
        },
        {
          'question': 'What is the smallest country in the world by land area?',
          'options': ['Monaco', 'San Marino', 'Vatican City', 'Liechtenstein'],
          'answer': 2,
        },
        {
          'question': 'Which desert is the largest in the world?',
          'options': [
            'Sahara Desert',
            'Gobi Desert',
            'Kalahari Desert',
            'Arabian Desert'
          ],
          'answer': 0,
        },
        {
          'question': 'What is the most populous city in the world?',
          'options': ['New York', 'Tokyo', 'Shanghai', 'Mumbai'],
          'answer': 1,
        },
        {
          'question': 'Which country has the most islands?',
          'options': ['Canada', 'Sweden', 'Indonesia', 'Norway'],
          'answer': 0,
        },
      ]
    },
    {
      'image': ImageConstant.MATHS,
      'category': 'MATHS',
      'list': [
        {
          'question': 'What is the value of π (pi) to two decimal places?',
          'options': ['3.12', '3.14', '3.16', '3.18'],
          'answer': 1,
        },
        {
          'question': 'What is the square root of 144?',
          'options': ['10', '12', '14', '16'],
          'answer': 1,
        },
        {
          'question': 'What is the value of 7 factorial (7!)?',
          'options': ['5040', '720', '840', '504'],
          'answer': 0,
        },
        {
          'question':
              'What is the perimeter of a square with each side measuring 5 units?',
          'options': ['10 units', '15 units', '20 units', '25 units'],
          'answer': 2,
        },
        {
          'question':
              'If you roll a fair six-sided die, what is the probability of rolling a number greater than 4?',
          'options': ['1/6', '1/3', '1/2', '5/6'],
          'answer': 3,
        },
        {
          'question': 'What is the value of 2^5?',
          'options': ['16', '32', '64', '128'],
          'answer': 1,
        },
        {
          'question': 'What is the sum of the interior angles of a triangle?',
          'options': [
            '90 degrees',
            '180 degrees',
            '270 degrees',
            '360 degrees'
          ],
          'answer': 1,
        },
        {
          'question': 'What is the formula for the area of a circle?',
          'options': ['πr^2', '2πr', 'πd', 'πr'],
          'answer': 0,
        },
        {
          'question': 'If x = 3 and y = 4, what is the value of x^2 + y^2?',
          'options': ['12', '25', '16', '32'],
          'answer': 1,
        },
        {
          'question':
              'What is the value of the sum of the first 10 positive integers?',
          'options': ['45', '50', '55', '60'],
          'answer': 0,
        },
      ]
    },
    {
      'image': ImageConstant.BIOLOGY,
      'category': 'BIOLOGY',
      'list': [
        {
          'question': 'What is the basic unit of life?',
          'options': ['Atom', 'Molecule', 'Cell', 'Organ'],
          'answer': 2,
        },
        {
          'question':
              'Which organ is responsible for pumping blood throughout the body?',
          'options': ['Liver', 'Brain', 'Lung', 'Heart'],
          'answer': 3,
        },
        {
          'question':
              'What is the process by which plants make their own food?',
          'options': [
            'Respiration',
            'Digestion',
            'Photosynthesis',
            'Fermentation'
          ],
          'answer': 2,
        },
        {
          'question': 'Which molecule carries genetic information?',
          'options': ['RNA', 'DNA', 'Protein', 'Lipids'],
          'answer': 1,
        },
        {
          'question':
              'What type of blood cells are responsible for fighting infections?',
          'options': [
            'Red blood cells',
            'White blood cells',
            'Platelets',
            'Plasma'
          ],
          'answer': 1,
        },
        {
          'question':
              'In humans, which system is responsible for controlling and coordinating activities?',
          'options': [
            'Digestive System',
            'Respiratory System',
            'Circulatory System',
            'Nervous System'
          ],
          'answer': 3,
        },
        {
          'question': 'What is the largest organ in the human body?',
          'options': ['Heart', 'Liver', 'Lungs', 'Skin'],
          'answer': 3,
        },
        {
          'question':
              'Which process involves the division of a cell into two identical daughter cells?',
          'options': ['Meiosis', 'Mitosis', 'Fission', 'Fusion'],
          'answer': 1,
        },
        {
          'question': 'What is the primary function of the mitochondria?',
          'options': [
            'Protein synthesis',
            'Energy production',
            'Waste removal',
            'Storage of nutrients'
          ],
          'answer': 1,
        },
        {
          'question':
              'Which type of plant tissue is involved in transporting water and nutrients?',
          'options': ['Xylem', 'Phloem', 'Epidermis', 'Parenchyma'],
          'answer': 0,
        },
      ]
    },
    {
      'image': ImageConstant.HISTORY,
      'category': 'CHEMISTRY',
      'list': [
        {
          'question': 'What is the chemical symbol for water?',
          'options': ['H2O', 'CO2', 'NaCl', 'O2'],
          'answer': 0,
        },
        {
          'question': 'What is the pH value of a neutral solution at 25°C?',
          'options': ['0', '4', '7', '14'],
          'answer': 2,
        },
        {
          'question': 'Which element has the chemical symbol "Au"?',
          'options': ['Silver', 'Gold', 'Iron', 'Copper'],
          'answer': 1,
        },
        {
          'question':
              'What is the process called when a solid changes directly into a gas?',
          'options': ['Melting', 'Sublimation', 'Condensation', 'Evaporation'],
          'answer': 1,
        },
        {
          'question':
              'What type of bond is formed when two atoms share electrons?',
          'options': [
            'Ionic bond',
            'Covalent bond',
            'Hydrogen bond',
            'Metallic bond'
          ],
          'answer': 1,
        },
        {
          'question': 'Which acid is commonly found in citrus fruits?',
          'options': [
            'Sulfuric acid',
            'Nitric acid',
            'Citric acid',
            'Hydrochloric acid'
          ],
          'answer': 2,
        },
        {
          'question': 'What is the most abundant gas in Earth’s atmosphere?',
          'options': ['Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen'],
          'answer': 1,
        },
        {
          'question':
              'What is the name of the process in which a liquid changes into a gas?',
          'options': ['Melting', 'Sublimation', 'Condensation', 'Vaporization'],
          'answer': 3,
        },
        {
          'question': 'What is the chemical formula for table salt?',
          'options': ['NaHCO3', 'NaCl', 'KCl', 'MgSO4'],
          'answer': 1,
        },
        {
          'question': 'What is the common name for dihydrogen monoxide?',
          'options': ['Salt', 'Sugar', 'Water', 'Alcohol'],
          'answer': 2,
        }
      ]
    }
  ];
}
