//
// Created by WIll on 10/30/2018.
//

#ifndef PROJECT_ASTNODE_H
#define PROJECT_ASTNODE_H

#include <list>
#include <string>
#include <iostream>
#include "SymbolNode.h"

using namespace std;

class ASTNode
{
    public:
        ASTNode(string node_label); //Add line and col num when ready
        void addChild(ASTNode* addNode);
        string getLabel() const;
        //int getLineNum() const;
        list<ASTNode *> &getChildren ();
		static int totalNodeCount;

	int getNodeNum () const;

protected:
	string label;
    int colNum; //Not implemented yet
    int lineNum; //Not implemented yet
	int nodeNum;

        list<ASTNode*> children;
        //friend ostream& operator<< (ostream &os, const ASTNode& output);
};

/*class ASTSwitchNode : public ASTNode
{
    public:
        ASTSwitchNode();
        ASTSwitchNode(int node_label, int line_num, list<ASTNode*> child_list);
        bool walk();
};

class ASTMathNode : public  ASTNode
{
    public:
        ASTMathNode();
        ASTMathNode(int node_label, int line_num, list<ASTNode*> child_list, int operator_type);
        bool walk();

    private:
        int operatorType; //Need an enum for the +, -, *, ect
};

class ASTSingleMathNode : public ASTNode //The walk for this function will be different than the math node
{
    public:
        ASTSingleMathNode();
        ASTSingleMathNode(int node_label, int line_num, list<ASTNode*> child_list, int operator_type);
        bool walk();

    private:
        int operatorType;
};

class ASTDeclaritors : public  ASTNode
{
    public:
        ASTDeclaritors();
        ASTDeclaritors(int node_label, int line_num, list<ASTNode*> child_list, SymbolNode inputSymbolNode);
        bool walk();
        int getType();

    private:
        SymbolNode variable;
};

class ASTFunctionNode : public ASTNode
{
    public:
        ASTFunctionNode();
        ASTFunctionNode(int node_label, int line_num, list<ASTNode*> child_list, SymbolNode inputSymbolNode);
        bool walk();

    private:
        SymbolNode function;
};*/

#endif //PROJECT_ASTNODE_H