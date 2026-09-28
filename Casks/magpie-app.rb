cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.333"
  sha256 arm:   "4d75712121f9d742e37937c1f2ba24721c62b60abcb60e71ded8dd329d810be0",
         intel: "00463c4b2739eea02b0eaa2dc73d8fb6521aa43b3d2f31e91422b29a761e2035"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
