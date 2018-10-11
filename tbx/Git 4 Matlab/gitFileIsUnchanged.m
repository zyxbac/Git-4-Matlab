function unchanged = gitFileIsUnchanged( file_name )
%GITFILEISUNCHANGED Checks if a file under git source control is in clean
%state
%   The function returns true if a file in working copy is in a clean
%   state.

validateattributes(file_name, {'char'}, {'nonempty'}, mfilename, 'file_name', 1)

[status, cmdout] = git('status', '-s', file_name);

if (0 == status) && isempty(cmdout)
    unchanged = true;
else
    unchanged = false;
end

end

% EOF
