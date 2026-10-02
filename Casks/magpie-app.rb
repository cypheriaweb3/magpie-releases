cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.678"
  sha256 arm:   "5444f11dd22d3fd62dbea828a63afadd48bfcd662dee86cb23e4dfd3040754e6",
         intel: "d2ee0e1a8be4cef800681510b0c971aa62c76140af0f3846625727acd1245a74"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
