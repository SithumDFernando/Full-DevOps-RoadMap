#!/bin/bash
# A simple bash script simulating a CI/CD pipeline

echo "🚀 Starting Pipeline..."

# Stage 1: Build
run_build() {
    echo "⚙️  [BUILD] Compiling code..."
    sleep 1
    echo "⚙️  [BUILD] Build successful!"
    return 0
}

# Stage 2: Test
run_tests() {
    echo "🧪 [TEST] Running unit tests..."
    sleep 1
    # Change the return 0 to return 1 to simulate a failure
    return 0
}

# Stage 3: Package
run_package() {
    echo "📦 [PACKAGE] Creating artifact (.tar.gz)..."
    sleep 1
    echo "📦 [PACKAGE] Packaging complete!"
    return 0
}

# Pipeline Execution
if run_build; then
    if run_tests; then
        if run_package; then
            echo "✅ Pipeline completed successfully!"
            exit 0
        else
            echo "❌ Pipeline failed at PACKAGE stage."
            exit 1
        fi
    else
        echo "❌ Pipeline failed at TEST stage."
        exit 1
    fi
else
    echo "❌ Pipeline failed at BUILD stage."
    exit 1
fi
