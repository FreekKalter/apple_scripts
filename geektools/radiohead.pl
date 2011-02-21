use strict;
use warnings;

use HTML::TreeBuilder;
use URI::Escape;
use LWP;
use Encode;
use Data::Dumper;


scrape('http://thepiratebay.org/search/radiohead/0/7/0');

sub scrape{
	my ($url) = @_;
	my $root = HTML::TreeBuilder->new;
	my $content = do_GET($url);
	$root->parse($content);

	
	my @results = $root->find_by_attribute("class", "detLink");
	printf "<html><head></head><body>\n";
	foreach my $result (@results){
		if($result->as_text() =~ /radiohead/i){
			printf("<a href=\"%s%s\">%s</a>\n", 'http://thepiratebay.org',  $result->attr('href'), $result->as_text());
		}		
	}
	printf '</body></html>';
	$root->delete();
}
 
sub do_GET {
	my $browser;
	$browser = LWP::UserAgent->new unless $browser;
	my $resp = $browser->get(@_);
	return ($resp->content, $resp->status_line, $resp->is_success, $resp)
	if wantarray;
	return unless $resp->is_success;
	return $resp->content;
}
