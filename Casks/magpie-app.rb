cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.476"
  sha256 arm:   "bc3c987f96d7ba1bbe9a364a4d2463643e3986c9fbe254e9f3038467262babed",
         intel: "a965da0ae194dd20ca61bbb315e86c990d4c6fb884f427bfc5b6d9db6bdfa456"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
