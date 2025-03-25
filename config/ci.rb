# Run using bin/ci

CI.run do
  step "Setup", "bin/setup --skip-server"

  step "Lint: Ruby", "bin/standard"
  step "Lint: ERB", "bin/erblint --lint-all"

  step "Security: Gem audit", "bin/bundler-audit"
  step "Security: Importmap vulnerability audit", "bin/importmap audit"
  step "Security: Brakeman code analysis", "bin/brakeman --quiet --no-pager --exit-on-warn --exit-on-error"

  step "Tests: Rails", "bin/rails test"
  step "Tests: System", "bin/rails test:system"
  step "Tests: Seeds", "env RAILS_ENV=test bin/rails db:seed:replant"
end
