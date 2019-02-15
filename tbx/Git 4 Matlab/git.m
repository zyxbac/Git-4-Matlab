function varargout = git(varargin)
% GIT Execute a git command.
%
% GIT <ARGS>, when executed in command style, executes the git command and
% displays the git outputs at the MATLAB console.
%
% STATUS = GIT(ARG1, ARG2,...), when executed in functional style, executes
% the git command and returns the output status STATUS.
%
% [STATUS, CMDOUT] = GIT(ARG1, ARG2,...), when executed in functional
% style, executes the git command and returns the output status STATUS and
% the git output CMDOUT.

% Check output arguments.
nargoutchk(0,2)

%% configure
GIT_BINARY = 'git';

%% Construct the git command.
git_command = strjoin([GIT_BINARY, varargin]);

% Execute the git command.
[status, git_output] = system(git_command);

switch nargout
    case 0
        disp(git_output)
    case 1
        varargout{1} = status;
    case 2
        varargout{1} = status;
        varargout{2} = git_output;
end

% EOF
