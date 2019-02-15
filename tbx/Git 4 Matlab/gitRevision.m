function revid = gitRevision
%GITREVISION Returns revision of HEAD
%   The function returns revision id of HEAD.

[status, cmdout] = git('rev-parse', '--short', 'HEAD');

if (0 == status) && ~isempty(cmdout)
    revid = strsplit(cmdout);
    revid(cellfun('isempty',revid)) = [];
    if 1 == size(revid,1) && 1 == size(revid,2)
        revid = revid{1};
    end
else
    revid = '';
end

end

% EOF
