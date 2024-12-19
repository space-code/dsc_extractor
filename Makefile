TARGET = dsc_extractor

SRC = main.swift extract_dylibs.swift utils.swift extractor.swift

SWIFT = swiftc

FLAGS = -g

all: $(TARGET)

hook:
	ln -sf ../../hooks/pre-commit .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit

bootstrap: hook
	mint bootstrap

fmt:
	mint run swiftformat .

compile: $(SRC)
	$(SWIFT) $(FLAGS) -c $(SRC)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run fmt bootstrap