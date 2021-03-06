# IMPACT 2 WHISKY v1.2
#
# Copyright (c) 2017, Mark Lammers, Vrije Universiteit Amsterdam
# All Rights Reserved.
#
# Unless required by applicable law or agreed to in writing, this
# software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.  See the License
# for the specific language governing permissions and limitations
# under the License.
#
# by: Mark Lammers, 2017

print('A custom formula to convert the impact factor (IF) of a journal')
print('to a price for a bottle of Scotch single malt whisky')
print('in celebration of every first author paper')
print('')
print('USAGE: impact2whisky(IF)')
print('')

impact2whisky<-function(IF){
  euro <- 40*log10(2*(IF+1)) #Arbitrary conversion formula 
  euro <- round(euro,2)
  print(paste('Impact factor',IF,'corresponds to',euro,'euro for a bottle of whisky'))
  print('Enjoy!')
}
