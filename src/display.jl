Base.display(doc::Document) = println("Doc: $(basename(doc._uri)) ", doc.code.index)
function Base.display(server::LanguageServerInstance)
    println("Root: ", server.workspaceFolders)
    for (uri, d) in server.documents
        display(d)
    end
end