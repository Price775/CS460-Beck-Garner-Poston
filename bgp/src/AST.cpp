#include "AST.h"
#include <fstream>

AST::AST (ASTNode* root)
{
	AST::root = root;
}

void AST::printTree ()
{
	if(root != nullptr)
	{
		ofstream treeOutFile;
		treeOutFile.open("output/treeOut.txt");
		treeOutFile << "digraph G {" << endl;
		printTreeHelper(root, treeOutFile);
		treeOutFile << '}';
		treeOutFile.close();
	}
}

void AST::printTreeHelper (ASTNode *nodePtr, ofstream& treeOutFile)
{
	if(nodePtr != nullptr)
	{
		treeOutFile << nodePtr->getNodeNum() << "[label = \"" << nodePtr->getLabel() << "\"];" << endl;
		for(auto it = nodePtr->getChildren().begin() ; it != nodePtr->getChildren().end() ; ++it)
		{
			treeOutFile << nodePtr->getNodeNum() << " -> " << (*it)->getNodeNum() << endl;
			printTreeHelper(*it, treeOutFile);
		}

	}
}