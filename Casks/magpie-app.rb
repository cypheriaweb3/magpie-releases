cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.608"
  sha256 arm:   "ff8b6b68563813e614e1335c624157070c2ef32687a92755c232fe89c80d8192",
         intel: "280befe60ad186ff5da6db99cbe17aadd8b9702e95c29f1047c595cde27ca0c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
