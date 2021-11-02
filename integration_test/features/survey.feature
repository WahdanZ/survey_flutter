Feature: Understanding of customers' habits

  Scenario: The product owner requires to have the questions, answers as JSON file
    Given The Backend Respond with data
    """
     {
       "id": "vAJax5hdbF",
      "title": "Effects of the Healy on human emotions",
      "description": "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email",
      "startedAt": "01.01.2021",
      "endedAt": "31.12.2021",
      "imageUrl": "https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.jpg?alt=media&token=4217d7e6-e855-47dc-a55e-8c692668a6ba",
      "termsAndConditionsUrl": "https://us.healy.shop/terms-of-use/",
      "finishText": "Thank you very much for your participation.",
      "questions": [
      {
      "id": "n0aq3sqRU7",
      "text": "In the past week, which emotion did you feel most often?",
      "type": "multiple",
      "required": true,
      "answers": [
        {
          "text": "Happy",
          "value": 0
        },
        {
          "text": "Excited",
          "value": 1
        },
        {
          "text": "Restless",
          "value": 2
        },
        {
          "text": "Sad",
          "value": 3
        },
        {
          "text": "Worried",
          "value": 4
        },
        {
          "text": "Angry",
          "value": 5
        }
      ]
    },
        {
          "id": "RZYRrFYzCc",
          "text": "Does this emotion affect your temper during the rest of the day?",
          "type": "rating",
          "required": true,
          "answers": [
             {
                "text": "Strongly disagree",
                "value": 0
              },
              {
                "text": "Disagree",
                "value": 1
              },
              {
                "text": "Neurtral",
                "value": 2
              },
              {
                "text": "Aggreed",
                "value": 3
              },
              {
                "text": "Strongly Agree",
                "value": 4
              }
          ]
        },
      {
      "id": "4J456QofoL",
      "text": "What event or events caused you to feel that emotion most frequently?",
      "type": "text",
      "required": true
       }
      ]
    }
    """
    When I open the app
    Then I expect to find the text "Effects of the Healy on human emotions"
    And  I expect to find the text "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email"
    And  I expect to find checkbox with text "I've read and accept the Terms and Conditions"
    And  I expect to find button with text "Start" is disable
    When I click checkbox with text "I've read and accept the Terms and Conditions"
    Then I expect to find button with text "Start" is enable
    When I tap on button with text "Start"
    Then I expect to find the text "Survey 1/3"
    And  I expect to find the text "In the past week, which emotion did you feel most often?"
    And  I expect to find button with text "Next" is disable
    When I tap on text "Happy"
    Then I tap on text "Excited"
    Then I expect to find button with text "Next" is enable
    When I tap on button with text "Next"
    Then I expect to find the text "Survey 2/3"
    And  I expect to find the text "Does this emotion affect your temper during the rest of the day?"
    And  I expect to find button with text "Next" is disable
    When I tap on text "Aggreed"
    Then I expect to find button with text "Next" is enable
    When I tap on button with text "Next"
    Then I expect to find the text "Survey 3/3"
    And  I expect to find the text "What event or events caused you to feel that emotion most frequently?"
    When I fill text filed with text "Bazinga"
    Then I expect to find button with text "Next" is enable
    When I tap on button with text "Next"
    Then I expect to find the text "Thank you very much for your participation."
    Then I expect to find button with text "Close" is enable





