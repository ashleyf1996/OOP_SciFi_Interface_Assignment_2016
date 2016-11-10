
/*This programme willstimulate a maths quiz game. A menu will ask the user to choose an option from 1-4. The user must enter the number of questions they want in the quiz. Once they have entered the number 
     they can start the quiz. They can then view the results of the quiz. 
    Author: Ashley Fitzerald DT282 - CI5406208
    Date: 30/10/15
*/

#include <stdio.h>
#include <stdlib.h>
#define SIZE 4

main()
{   
    int choice=0;
    int question_numbers=0;
    int correct_ans=0;
    int incorrect_ans=0;
    int ans[SIZE];
    int i=0;
    
    
    //This statement is out of the loop so it displays at the start and doesnt keep displaying after each option is choosen
     printf("\nCome and play Ashley's amazing maths quiz to test your maths skills!\n\n");
    
     //this do-while loop will continuously display the main menu after each option
    do
    {
           //main menu 
            
            printf("\nOption1: Please enter the number of questions for this round(max 4)\n");
            
            printf("\nOption2: Start the quiz\n");
            
            printf("\nOption3: Results of quiz\n");
            
            printf("\nOption4: Exit program\n\n");
            
        
            printf("\nPLease select which option you would like:\n");
            scanf("%d",&choice);
        
            //switch for user to choose an option
           switch(choice)
            {
                case 1:
                {
                    //choosing the number of questions for the quiz
                    printf("\nPlease enter the number of questions you would like in the quiz\n");
                    scanf("%d", &question_numbers);
                    
                    //in case the user types less than 1 or more than 4 questions
                    if(question_numbers<1||question_numbers>4)
                    {
                        printf("\nSorry please choose between 1 and 4 questions,return to option 1!\n\n");
                    }//end if
                    
                    else
                    {
                        printf("\nThere will be %d question(s) in the quiz\n",question_numbers);
                    }//end else
                
                        break;
                }//end case 1
                
                case 2:
                {
                   //nested switch to select the amount of  questions for the quiz
                    switch(question_numbers)
                    {
                        case 1:
                        {
                            printf("What is: 2+3=");
                            scanf("%d", &ans[i]);
                            
                            if(ans[i]!=5)
                            {
                                printf("Wrong! The correct answer is 5\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                    printf("Correct, Weldone!\n");
                                    correct_ans++;
                            }//end else
                        
                            break;
                        }//end case 1 
                        
                        case 2:
                        {
                            printf("What is: 2+3=");
                            scanf("%d", &ans[i]);
                        
                            if(ans[i]!=5)
                            {
                              printf("Wrong! The correct answer is 5\n");
                              incorrect_ans++;
                            }//end if
                            
                            else 
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            printf("\nWhat is: 3+3=");
                            scanf("%d", &ans[i]);
                            
                            if(ans[i]!=6)
                            {
                              printf("Wrong! The correct answer is 6\n");
                              incorrect_ans++;
                            }//end if
                            
                            else 
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            break;
                        }//end case 2
                        
                        case 3:
                        {
                        
                            printf("What is: 2+3=");
                            scanf("%d", &ans[i]);
                         
                            if(ans[i]!=5)
                            {
                                printf("Wrong! The correct answer is 5\n");
                                incorrect_ans++;
                            }//end if      
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            printf("\nWhat is: 3+3=");
                            scanf("%d", &ans[i]);
                         
                            if(ans[i]!=6)
                            {
                                printf("Wrong! The correct answer is 6\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            printf("\nWhat is: 1*4=");
                            scanf("%d", &ans[i]);
                            
                            if(ans[i]!=4)
                            {
                                printf("Wrong! The correct answer is 4\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end eslse
                          
                            break;
                        }//end case 3
                        case 4:
                        {
                            printf("What is: 2+3=");
                            scanf("%d", &ans[i]);
                          
                            if(ans[i]!=5)
                            {
                                printf("Wrong!The correct answer is 5\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            printf("\nWhat is: 3+3=");
                            scanf("%d", &ans[i]);
                            
                            if(ans[i]!=6)
                            {
                                printf("Wrong! The correct answer is 6\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            printf("\nWhat is: 1*4=");
                            scanf("%d", &ans[i]);
                          
                            if(ans[i]!=4)
                            {
                                printf("Wrong! The correct answer is 4\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            
                            printf("\nWhat is: 9/3=");
                            scanf("%d", &ans[i]);
                           
                            if(ans[i]!=3)
                            {
                                printf("Wrong! The correct answer is 3\n");
                                incorrect_ans++;
                            }//end if
                            
                            else
                            {
                                printf("Correct, Weldone!\n");
                                correct_ans++;
                            }//end else
                            break;
                            
                            default:
                            {
                                printf("Sorry please go to option1\n");
                                break;
                            }//end default
                   
                        }//end case 4
                
                    }//end inner switch
                 }//end case 2
                 
                 // while to allow results to come up only when choice ==3
               while(choice==3)
                { while(choice==3)
                {
                    case 3:
                    {
                            printf("\nYour Results:\n\n");
                        
                            printf("Number of incorrect answers: %d\n\n", incorrect_ans);
                        
                            printf("Number of correct answers: %d\n", correct_ans);
                        
                            //reinitialising incorrect answers and correct answers to 0 so the results reset after each round
                            incorrect_ans=0;
                        
                            correct_ans=0;
                            break;
                  
                    }//end case 3
                   
                    case 4:
                    { 
                        //to end the program
                        exit(0);
                    }//end case 4
                    
                    default:
                    {
                        printf("\nSorry, please go to option 1\n");
                    }//end deault
                   
                }//end while
               
            }//end main switch        
                
    }      
    while(choice==1||2||3||4); //end do while
         
      
    getchar();
    getchar();
    
}//end main   
