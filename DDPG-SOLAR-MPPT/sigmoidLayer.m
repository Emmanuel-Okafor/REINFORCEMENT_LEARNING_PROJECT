classdef sigmoidLayer < nnet.layer.Layer
methods
        function layer = sigmoidLayer(name) 
            % Set layer name
            % Set layer description
            if nargin == 1
                layer.Name = name;
            end
            layer.Description = 'sigmoidLayer';
        end
        function Z = predict(layer,X)
            % Forward input data through the layer and output the result
          %  Z = exp(X)./(exp(X)+1);
             Z = sigmoid(X)
        end
       
    end
end