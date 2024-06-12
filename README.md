# Flashcards

This app lets you create quiz questions for yourself to reinforce your knowledge about a topic of your choice. I've used it to build knowledge for the AWS SA Pro exam and the Datadog certifications.

`chmod +x` the flashcards.sh script, then start it with `./flashcards.sh`. It'll ask you a question. It won't evaluate your answer. Type your response if you want. Hit enter to see the answer. Repeat.

You can update the vale of `DATAFILE` in flashcards.sh to point to the file that holds your questions and answers.

## AWS certification
AWS questions and answers are contained in a file called `data`. These questions come from notes I've taken on AWS SA Pro courses from acloud.guru and udemy. In turn, these often reference AWS content such as FAQs. Generally I've tried to include only questions that ask about either course material or material which the courses have indicated is useful for the exam. It's not intended to just include lots of info about AWS. It's intended to build knowledge required to pass the test.

Some of the questions are somewhat obvious (particularly some T or F) but I think are still helpful reminders of, for example, some of the capabilities of various AWS services.

## Datadog certification
Questions and answers that aim to build knowledge for Datadog certification exams are contained in a file called `ddog_data`. This material is from the Datadog public docs—docs.datadoghq.com
