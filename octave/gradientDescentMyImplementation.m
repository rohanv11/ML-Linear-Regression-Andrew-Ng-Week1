%This is a backup of Gradient Descent which didn't quite work, Written a lot of comments in here...
%The actual gradient descent implementation is in gradientDescent.m



function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);



for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % formula for Gradient Descent : theta = theta - alpha * (1/m) * summation(i=1 to m)[h(x) - y] * x
    % theta : 2 by 1 matrix
    % h(x) = X * theta [predictions] 
    % X = 97 by 2 theta = 2 by 1 
    % So, h(x) = X * theta = (97 by 2) * (2 by 1)
    %                      = (97 by 1)
    % y = 97 by 1

    %half imlpementation
    temp =  ( X * theta - y);    % (X * theta - y) = 97 by 1  
    

    % (X * theta - y)' = 1 by 97
    % The X consists of 
        % in first column all 1s
        % in second column feature 1 values i.e. in this case population values for 97 examples
        % So, X = 97 by 2
    % Thus, i need a final 2 by 1 vector to subtract from theta(2 by 1) as in formula of Gradient Descent


    % (X * theta - y)' * X = (1 by 97) * (97 by 2) 
    %                      = (1 by 2) .....And this result to be subtracted from theta

    %Remaining half implementayion
    temp = temp' * X; % completing vector multiplication part as above written
    value = (alpha * (1/m));
    theta = theta - value .* temp; % multiplying constants to vectors

    %disp(theta);


    % ============================================================

    % Save the cost J in every iteration    
    

    

    % J_history(iter) = computeCost(X, y, theta);
    disp('iter-no :');
    disp(iter);

    % disp('J history :');
    % disp(J_history(iter));

end

end
