template <class T>

class myList {

			T *theList;
			int sizeOfList;
			int index;
	public:
			myList();
			void createList();
			void addItemToList(T);
			bool isListEmpty();
			bool isListFull();
			void writeList();
			void visitIndexOfList(T);
			void setSizeOfList(int);
			int getSizeOfList();
};
