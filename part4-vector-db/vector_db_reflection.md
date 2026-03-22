## Vector DB Use Case

A traditional keyword-based search would not work very well for searching large legal contracts using natural language. The main issue is that keyword search depends on exact word matches. In real situations, the same concept can be written in many different ways. For example, a lawyer might search for "termination clauses", but the contract could use different wording like "conditions for ending the agreement". In such cases, keyword search might fail to return useful results.

This is where vector databases become useful. Instead of focusing on exact words, they focus on the meaning of the text. Both the contract and the user’s query are converted into embeddings, which are numerical representations of their meaning. This allows the system to find relevant sections even if the wording is different.

In practice, the contract would be divided into smaller sections, and embeddings would be created for each part. When a user asks a question, the system compares the query embedding with stored embeddings and retrieves the most relevant sections.

These results can then be shown directly or further processed using a language model to generate a clear answer. Overall, a vector database makes the search much more accurate and user-friendly compared to traditional methods.