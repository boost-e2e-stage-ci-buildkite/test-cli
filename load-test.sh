HEAD=$(git rev-parse --short HEAD)

echo $1 $HEAD

/Users/david/dev/src/github.com/peaudecastor/checks-runner/boost scan exec \
  --api-token=2b2e2gfq4w1x6u4n6q1h5l6p5r3d464c6246r1o3l27b4wv6p5 \
  --report-upload \
  --branch testing-something-out \
  --project github/david-test-org-2/railsgoat \
  --command "sh ./script.sh" \
  --require-full-repo \
  --pull-request 1 \
  --path . HEAD..HEAD~1
